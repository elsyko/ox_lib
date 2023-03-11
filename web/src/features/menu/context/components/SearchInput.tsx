import { Input } from '@mantine/core';
import { Option } from '../../../../typings/context';

const SearchInput: React.FC<{
  option: [string, Option];
  handleChange: (e: React.ChangeEvent<HTMLInputElement>) => void;
  search: string;
}> = ({ option, handleChange, search }) => {
  const placeholder = option[1].placeholder || 'Search';
  return <Input size="xs" style={{ width: '270px' }} onChange={handleChange} value={search} placeholder={placeholder} />;
};

export default SearchInput;